.class Lcom/miui/home/launcher/AccessibilityAdaptHelper$5;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityAdaptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setDefaultScreenAccessibilityDelegate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$5;->val$checked:Z

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 141
    iget-boolean p0, p0, Lcom/miui/home/launcher/AccessibilityAdaptHelper$5;->val$checked:Z

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method
