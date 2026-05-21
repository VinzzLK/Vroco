.class public final synthetic Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/LauncherModel;

.field public final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;

.field public final synthetic f$2:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/LauncherModel;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;->f$2:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;->f$2:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel;->$r8$lambda$-bEXYPZAlFZS_p1hsTdL-UfCsxM(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method
