.class Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$2;
.super Ljava/lang/Object;
.source "ServiceDeliveryLayoutAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->startAppGrid3x3AppearAnimation(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appGrid:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$2;->val$appGrid:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ServiceDeliveryLayoutAnimation"

    const-string v1, "startAppGrid3x3AppearAnimation end"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation$2;->val$appGrid:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutAnimation;->resetViewStatus(Landroid/view/View;)V

    return-void
.end method
