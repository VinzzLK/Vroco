.class Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityAdaptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setItemViewAccessibilityDelegate(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$blockedView:Landroid/view/View;

.field final synthetic val$config:Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;Landroid/view/View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;->val$config:Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;

    iput-object p2, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;->val$blockedView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 p1, 0x10

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;->val$config:Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;->val$blockedView:Landroid/view/View;

    invoke-interface {p1, p2, p0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;->configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x10

    if-ne p2, p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;->val$config:Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;->val$blockedView:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;->handleClickAction(Landroid/view/View;)V

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
