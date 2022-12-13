import Http from "@/core/utils/Http";

/**
 * 数据权限服务
 */
export default class SysDataAuthorityService {

    static urlPrefix = "/api/admin/SysDataAuthority";

    /**
     * 获取数据列表
     * 
     * @param current 
     * @param pageSize 
     * @param search 
     * @returns 
     */
    static findList(current: number, pageSize: number, search: any = {}) {
        return Http.post(`${this.urlPrefix}/findList/${pageSize}/${current}`, search)
    }

    /**
     * 删除集合数据
     * 
     * @param ids 
     * @returns 
     */
    static deleteList(ids: string[]) {
        return Http.post(`${this.urlPrefix}/deleteList`, ids)
    }

    /**
     * 查询表单
     * 
     * @param id 
     * @returns 
     */
    static findForm(id?: string | undefined) {
        return Http.get(`${this.urlPrefix}/findForm${(id ? '/' + id : '')}`)
    }

    /**
     * 保存表单数据
     * 
     * @param id 
     * @param formData 
     * @returns 
     */
    static saveForm(id: string | undefined, formData: any) {
        return Http.post(`${this.urlPrefix}/${id ? 'update' : 'create'}`, formData)
    }

    /**
     * 导出 excel
     * 
     * @param search 
     * @returns 
     */
    static exportExcel(search: any = {}) {
        return Http.download(`${this.urlPrefix}/exportExcel`, search);
    }

    /**
      * 获取数据权限 根据角色id
      * @param {*} roleId 
      * @returns 
      */
    static getDataAuthorityByRoleId(roleId: string) {
        return Http.get(`${this.urlPrefix}/getDataAuthorityByRoleId/${roleId}`);
    }
}