import Http from '@/infrastructure/scripts/Http';
import Tools, { EMessageType } from "@/infrastructure/scripts/Tools";
import { ApiResult } from '@/infrastructure/typings/ApiResult';

class RoleFunctionService {

    private controllerName: string = "admin/SysRoleMenuFunction";

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
     * 获取角色菜单功能树
     * @param {角色Id} roleId 
     */
    getRoleMenuFunctionByRoleId(roleId: string): Promise<ApiResult<any>> {
        return Http.get(`${this.controllerName}/getRoleMenuFunctionByRoleId/${roleId}`);
    }

}

export default new RoleFunctionService();