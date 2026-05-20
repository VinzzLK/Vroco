.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

.field public final synthetic f$1:Landroid/widget/ImageView;

.field public final synthetic f$2:Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Landroid/widget/ImageView;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$2:Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    iput p4, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$2:Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->$r8$lambda$0YFW44rFEN6MnS9C4b5hjVJOtgE(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Landroid/widget/ImageView;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V

    return-void
.end method
