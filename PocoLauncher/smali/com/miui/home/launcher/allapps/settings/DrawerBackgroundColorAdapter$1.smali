.class Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DrawerBackgroundColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->setItemViewAccessibility(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$1;->this$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$1;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$1;->val$description:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$1;->val$itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 82
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 83
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 84
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    const/16 p0, 0x10

    .line 85
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(I)V

    :cond_0
    return-void
.end method
