.class public final synthetic Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field public final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field public final synthetic f$2:Lcom/miui/home/launcher/LauncherWidgetView;

.field public final synthetic f$3:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    iput-object p4, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$3:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;->f$3:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/Workspace;->$r8$lambda$dvbflLBM0WLTpjYRbvqoPCqUiDw(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method
