import Http from '@/infrastructure/scripts/Http';
import Tools, { EMessageType } from "@/infrastructure/scripts/Tools";
import { ApiResult } from '@/infrastructure/typings/ApiResult';

class MenuService {

    private controllerName: string = "admin/SysMenu";

    /**
     * 获取菜单
     *
     * @returns {Promise}
     */
    getMenus(): Promise<ApiResult<any>> {
        return Http.get(`${this.controllerName}/getMenus`);
    }

    /**
     * 查询列表
     * 
     * @param {一页显示多少行} rows 
     * @param {当前页码} page 
     */
    findList(rows: number, page: number, search = {}): Promise<ApiResult<any>> {
        return Http.post(`${this.controllerName}/findList/${rows}/${page}`, search, false);
    }

    /**
     * 删除数据
     * 
     * @param {要删除的id 数组} ids 
     */
    deleteList(ids: string[]): Promise<ApiResult<any>> | undefined {
        console.log(ids);
        if (ids && ids.length === 0) {
            Tools.message("请选择要删除的数据!", EMessageType.警告);
            return;
        }
        return Http.post(`${this.controllerName}/deleteList`, ids, false);
    }

    /**
     * 获取表单数据
     * 
     * @param {*} id 
     */
    findForm(id: string | null): Promise<ApiResult<any>> {
        return Http.get(`${this.controllerName}/findForm${(id ? '/' + id : '')}`);
    }

    /**
     * 保存表单
     * 
     * @param {表单数据} vm 
     */
    saveForm(vm: any): Promise<ApiResult<any>> {
        if (vm.id) {
            return Http.post(`${this.controllerName}/update`, vm);
        }
        return Http.post(`${this.controllerName}/create`, vm);
    }

    /**
     * 获取菜单树
     *
     */
    getMenusFunctionTree(): Promise<ApiResult<any>> {
        return Http.get(`${this.controllerName}/getMenusFunctionTree`);
    }

    /**
     * 获取所有菜单集合
     * @param {*} search 
     * @returns 
     */
    getAll(search = {}): Promise<ApiResult<any>> {
        return Http.post(`${this.controllerName}/getAll`, search, false);
    }

}

export default new MenuService()