.class public final synthetic Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/miui/home/launcher/LauncherModel;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/LauncherModel;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/LauncherModel;

    iput-object p3, p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/LauncherModel;

    iget-object p0, p0, Lcom/miui/home/launcher/HideAppList$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/HideAppList;->$r8$lambda$58X9Iae1xB1KMLFJLPABhGzWdr0(Ljava/lang/String;Lcom/miui/home/launcher/LauncherModel;Landroid/os/UserHandle;)V

    return-void
.end method
