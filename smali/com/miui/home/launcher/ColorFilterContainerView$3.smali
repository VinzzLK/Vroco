.class Lcom/miui/home/launcher/ColorFilterContainerView$3;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ColorFilterContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ColorFilterContainerView;->setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ColorFilterContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$3;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 182
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 183
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_3

    .line 184
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$3;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$600(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$3;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$600(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$3;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$600(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/bean/AllAppsColorBean;

    if-nez p0, :cond_2

    return-void

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/bean/AllAppsColorBean;->getColorName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/bean/AllAppsColorBean;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
