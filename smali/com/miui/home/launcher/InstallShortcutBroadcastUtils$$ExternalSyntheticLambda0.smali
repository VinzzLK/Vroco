.class public final synthetic Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Intent;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    iget-object p0, p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->$r8$lambda$C9C8yRM7FRXr2Kj7X8wfvY1CM1w(Ljava/lang/String;Landroid/content/Intent;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;Landroid/content/Context;)V

    return-void
.end method
