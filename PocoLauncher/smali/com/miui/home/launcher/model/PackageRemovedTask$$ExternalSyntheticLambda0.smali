.class public final synthetic Lcom/miui/home/launcher/model/PackageRemovedTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/PackageRemovedTask$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/model/PackageRemovedTask$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/model/PackageRemovedTask;->$r8$lambda$2qFh90c_r-okaXe2nHFerO0gg20(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
