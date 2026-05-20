.class public abstract Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "ShortcutConfigActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
    }
.end annotation


# instance fields
.field private final mCn:Landroid/content/ComponentName;

.field protected mLabel:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;

.field public mWidgetCategory:I


# direct methods
.method protected constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/16 v0, -0x3e8

    .line 65
    iput v0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mWidgetCategory:I

    const/16 v0, 0x14

    .line 69
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 71
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    .line 73
    iput-object p2, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public static tryCreateShortcutInfoFromPinItemRequest(Lcom/miui/launcher/common/PinItemRequestCompat;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->accept()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 87
    new-instance p0, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DeepShortcutInfo;-><init>(Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    return-object p0
.end method

.method public abstract getFullResIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public getWidgetCategoryId()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mWidgetCategory:I

    return p0
.end method

.method public getWidgetCategoryString()Ljava/lang/String;
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x7f100035

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    .line 126
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launcher does not have the permission to launch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCActivityInfo"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    :catch_1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1
.end method
