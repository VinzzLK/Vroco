.class Lcom/miui/home/launcher/AccessibilityAdaptHelper$4;
.super Ljava/lang/Object;
.source "AccessibilityAdaptHelper.java"

# interfaces
.implements Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setButtonItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildContentDescription(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$4;->buildContentDescription(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public buildContentDescription(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    .line 115
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$4;->configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/widget/TextView;)V

    return-void
.end method

.method public configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/widget/TextView;)V
    .locals 0

    const/4 p0, 0x1

    .line 123
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    const-string p0, "android.widget.Button"

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic handleClickAction(Landroid/view/View;)V
    .locals 0

    .line 115
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$4;->handleClickAction(Landroid/widget/TextView;)V

    return-void
.end method

.method public handleClickAction(Landroid/widget/TextView;)V
    .locals 0

    .line 129
    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method
