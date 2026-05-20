.class public Lcom/miui/home/launcher/AccessibilityAdaptHelper;
.super Ljava/lang/Object;
.source "AccessibilityAdaptHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;
    }
.end annotation


# direct methods
.method public static setButtonItemViewAccessibility(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$1;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static setButtonItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$4;

    invoke-direct {v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$4;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setItemViewAccessibilityDelegate(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;)V

    return-void
.end method

.method public static setDefaultScreenAccessibilityDelegate(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$5;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$5;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static setImageViewAsButtonAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setItemViewAccessibilityDelegate(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;)V

    return-void
.end method

.method public static setItemViewAccessibilityDelegate(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "AccessibilityAdaptHelper"

    if-nez p0, :cond_0

    const-string/jumbo p0, "setItemViewAccessibilityDelegate, accessibilityItemView is null"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p0, "setItemViewAccessibilityDelegate, targetView is null"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 60
    invoke-interface {p3, p2, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;->buildContentDescription(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    new-instance p1, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;

    invoke-direct {p1, p3, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$2;-><init>(Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static setSwitchItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Lmiuix/slidingwidget/widget/SlidingButton;)V
    .locals 1

    .line 90
    new-instance v0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$3;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setItemViewAccessibilityDelegate(Landroid/view/View;Ljava/lang/String;Landroid/view/View;Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;)V

    return-void
.end method
