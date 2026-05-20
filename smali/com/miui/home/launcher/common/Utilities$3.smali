.class Lcom/miui/home/launcher/common/Utilities$3;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/Utilities;->setRoleDescription(Landroid/view/View;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1602
    iput-object p1, p0, Lcom/miui/home/launcher/common/Utilities$3;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/home/launcher/common/Utilities$3;->val$resId:I

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1605
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1606
    iget-object p1, p0, Lcom/miui/home/launcher/common/Utilities$3;->val$context:Landroid/content/Context;

    iget p0, p0, Lcom/miui/home/launcher/common/Utilities$3;->val$resId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
