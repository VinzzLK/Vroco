.class Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ApplicationsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ApplicationsMessage;


# direct methods
.method public static synthetic $r8$lambda$53YS8H83sBxKdZeWuCvEPsb5bqo(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->lambda$onReceive$1(Landroid/content/ComponentName;ZLandroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bnPWbmWAKyITcBuvF3ElP_ALLL0(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->lambda$onReceive$2(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-DAUPT_1lKtrghixIBzs_yj50k(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->lambda$onReceive$0(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iDiM-47xG2sk8GDzrQ41xa6FFs8(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->lambda$onReceive$3(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onReceive$1(Landroid/content/ComponentName;ZLandroid/content/Intent;I)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    new-instance p2, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;)V

    invoke-static {p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage;->access$400(Lcom/miui/home/launcher/ApplicationsMessage;Ljava/util/function/Predicate;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_3

    .line 153
    iget-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p2}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    const-string v0, "miui.intent.extra.application_show_corner"

    .line 154
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    const-string/jumbo p2, "userId"

    .line 155
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-gez p2, :cond_2

    move v3, p4

    goto :goto_0

    :cond_2
    move v3, p2

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    const-string/jumbo p0, "targetPkg"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "android.intent.extra.update_application_message_text"

    .line 160
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "android.intent.extra.update_application_message_text_background"

    .line 161
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "android.intent.extra.update_application_message_icon_tile"

    .line 162
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, p1

    .line 159
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/ApplicationsMessage;->access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$onReceive$2(Landroid/content/ComponentName;I)V
    .locals 7

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/ApplicationsMessage;->access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private synthetic lambda$onReceive$3(Landroid/content/Intent;)V
    .locals 10

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miui.intent.extra.application_show_corner"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ApplicationsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 139
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$300(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 140
    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    const-string v2, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "android.intent.extra.update_application_component_name"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.intent.extra.update_application_message_text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v9

    .line 149
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda1;

    move-object v4, v2

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;ZLandroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const-string v2, "action_home_clear_application_message"

    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "appComponentName"

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear app message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    .line 170
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_4

    if-gez p1, :cond_3

    goto :goto_0

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v2}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 180
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void

    .line 141
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "return:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 134
    new-instance p1, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
