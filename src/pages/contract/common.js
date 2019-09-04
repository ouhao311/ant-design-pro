export const getParseOption = (key, data) => data.find(item => item.id === key);

export const TYPE = [
  {
    id: '1',
    name: '省公司',
  },
  {
    id: '2',
    name: '总部部门',
  },
  {
    id: '3',
    name: '专业公司',
  },
  {
    id: '4',
    name: '直属单位',
  },
  {
    id: '5',
    name: '研发机构',
  },
];

export const LEVEL = [
  {
    id: '1',
    name: '一级',
  },
  {
    id: '2',
    name: '二级',
  },
];