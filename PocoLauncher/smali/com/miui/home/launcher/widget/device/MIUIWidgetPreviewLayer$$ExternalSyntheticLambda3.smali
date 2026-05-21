.class public final synthetic Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iput-boolean p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-boolean p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->$r8$lambda$6YJfVOxy1zDw3Iqj-0CqzuOOxUM(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;ZLjava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
