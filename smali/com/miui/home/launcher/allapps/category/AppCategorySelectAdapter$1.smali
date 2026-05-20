.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field final synthetic val$iconViewHolder:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

.field final synthetic val$mAccessibilityString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;->val$iconViewHolder:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;->val$mAccessibilityString:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;->val$iconViewHolder:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x10

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;->val$mAccessibilityString:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    :goto_0
    return-void
.end method
