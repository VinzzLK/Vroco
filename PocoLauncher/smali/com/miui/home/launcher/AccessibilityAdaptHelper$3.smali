.class Lcom/miui/home/launcher/AccessibilityAdaptHelper$3;
.super Ljava/lang/Object;
.source "AccessibilityAdaptHelper.java"

# interfaces
.implements Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setSwitchItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Lmiuix/slidingwidget/widget/SlidingButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig<",
        "Lmiuix/slidingwidget/widget/SlidingButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildContentDescription(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$3;->buildContentDescription(Lmiuix/slidingwidget/widget/SlidingButton;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public buildContentDescription(Lmiuix/slidingwidget/widget/SlidingButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public bridge synthetic configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    .line 90
    check-cast p2, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$3;->configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lmiuix/slidingwidget/widget/SlidingButton;)V

    return-void
.end method

.method public configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lmiuix/slidingwidget/widget/SlidingButton;)V
    .locals 0

    const/4 p0, 0x1

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 99
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string p0, "android.widget.Switch"

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic handleClickAction(Landroid/view/View;)V
    .locals 0

    .line 90
    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$3;->handleClickAction(Lmiuix/slidingwidget/widget/SlidingButton;)V

    return-void
.end method

.method public handleClickAction(Lmiuix/slidingwidget/widget/SlidingButton;)V
    .locals 0

    .line 105
    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    return-void
.end method
