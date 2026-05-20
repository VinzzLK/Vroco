.class public final synthetic Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherHideApp$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherHideApp;->$r8$lambda$gcame82V79iVePpIqYQvViHTCcs(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
