.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;->f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;->f$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;->f$1:I

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->$r8$lambda$xseNiPwwwHYEl31i88-Z8Qci0Lw(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
