.class Lmiuix/preference/RadioButtonPreference$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/RadioButtonPreference;->setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/RadioButtonPreference;

.field final synthetic val$summaryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreference;Landroid/view/View;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    iput-object p2, p0, Lmiuix/preference/RadioButtonPreference$1;->val$summaryView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 156
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    invoke-static {v1}, Lmiuix/preference/RadioButtonPreference;->access$000(Lmiuix/preference/RadioButtonPreference;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    invoke-static {v1}, Lmiuix/preference/RadioButtonPreference;->access$000(Lmiuix/preference/RadioButtonPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 160
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    invoke-static {v1}, Lmiuix/preference/RadioButtonPreference;->access$000(Lmiuix/preference/RadioButtonPreference;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference$1;->val$summaryView:Landroid/view/View;

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference$1;->val$summaryView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    :cond_3
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 174
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreference$1;->this$0:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 175
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    :cond_4
    return-void
.end method
