package com.opms.entity;

/**
 * 
 * description:���ŵ�ʵ����
 * @author liyanpeng
 * @date 2017��7��28��
 */
public class PmsDeparts {
    private Long departid;//����ID

    private String name;//��������

    private String description;//���ŵ�������Ϣ

    private Integer status;//����״̬��������������

    /**
     * description:��ȡ����ID
     * @author liyanpeng
     * @date 2017��7��28��
     */
    public Long getDepartid() {
        return departid;
    }

    /**
     * description:���ò���ID
     * @author liyanpeng
     * @date 2017��7��28��
     */
    public void setDepartid(Long departid) {
        this.departid = departid;
    }

    /**
     * description:��ȡ��������
     * @author liyanpeng
     * @date 2017��7��28��
     */
    public String getName() {
        return name;
    }

    /**
     * description:���ò�������
     * @author liyanpeng
     * @date 2017��7��28��
     */
    public void setName(String name) {
        this.name = name;
    }

    
    /**
     * description:��ȡ״̬
     * @author liyanpeng
     * @date 2017��7��28��
     */
    public Integer getStatus() {
        return status;
    }
    /**
     * description:��ȡ������Ϣ
     * @author liyanpeng
     * @date 2017��7��28��
     */
    
    public String getDescription() {
		return description;
	}
    /**
     * description:����������Ϣ
     * @author liyanpeng
     * @date 2017��7��28��
     */
    
	public void setDescription(String description) {
		this.description = description;
	}

	/**
     * description:����״̬
     * @author liyanpeng
     * @date 2017��7��28��
     */
    public void setStatus(Integer status) {
        this.status = status;
    }
}