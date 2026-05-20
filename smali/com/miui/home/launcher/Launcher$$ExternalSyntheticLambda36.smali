.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;

.field public final synthetic f$2:Lcom/miui/home/launcher/ShortcutInfo;

.field public final synthetic f$3:Landroid/content/pm/PackageManager;

.field public final synthetic f$4:Landroid/content/Intent;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$3:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$4:Landroid/content/Intent;

    iput-boolean p6, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$3:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$4:Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda36;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$Sxy05EbvAUnIIPdEt6QPxSyR6H4(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V

    return-void
.end method
