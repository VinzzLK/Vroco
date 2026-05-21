.class Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;
.super Ljava/lang/Object;
.source "AccessibilityAdaptHelper.java"

# interfaces
.implements Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setImageViewAsButtonAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/AccessibilityAdaptHelper$AccessibilityConfig<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$baseContentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;->val$baseContentDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildContentDescription(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 150
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;->buildContentDescription(Landroid/widget/ImageView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public buildContentDescription(Landroid/widget/ImageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;->val$baseContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0

    .line 150
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;->configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/widget/ImageView;)V

    return-void
.end method

.method public configureNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/widget/ImageView;)V
    .locals 0

    const-string p0, "android.widget.Button"

    .line 158
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic handleClickAction(Landroid/view/View;)V
    .locals 0

    .line 150
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper$6;->handleClickAction(Landroid/widget/ImageView;)V

    return-void
.end method

.method public handleClickAction(Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_0
    return-void
.end method
