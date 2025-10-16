using com.deloitte.mdg.cost.center as db from '../db/data-model';

service CostCenterService {
  entity CostCenter as projection on db.CostCenter;
}
