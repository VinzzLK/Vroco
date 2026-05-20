.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$4;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AppCategorySelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$4;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-string p0, ""

    .line 249
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    return-void
.end method
