namespace com.deloitte.mdg.cost.center;

using {
  cuid
} from '@sap/cds/common';

@assert.range
type WorkflowStatus : String enum {
  ![Pending];
  ![In Approval];
  Rejected;
  ![Approved];
}

type CostCenterType : String enum {
  Standard;
  ProfitCenter;
  Internal;
}

entity CostCenter: cuid {
  key ID             : UUID;
      Name           : String(100);
      ControllingArea: String(10);
      Type           : String;
      Requester      : String(100);
      WorkflowStatus : String;
      ApprovalDate   : DateTime;
      SAPCostCenterID: String(20);
      Remarks        : String(255);
}
