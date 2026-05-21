.class Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;
.super Landroid/view/ViewOutlineProvider;
.source "LauncherServiceDeliveryWidgetContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setOutLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;

.field final synthetic val$radius:F

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;Landroid/graphics/Rect;F)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;->this$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;->val$radius:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_1
    return-void
.end method
