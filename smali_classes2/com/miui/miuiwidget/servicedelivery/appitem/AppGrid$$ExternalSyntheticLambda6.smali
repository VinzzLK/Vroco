.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

.field public final synthetic f$1:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;->f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;->f$1:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    iput-boolean p3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;->f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;->f$1:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->$r8$lambda$briDIgK1G8Ql9-xKJpG2b0Dc5h8(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V

    return-void
.end method
