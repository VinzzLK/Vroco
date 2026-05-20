.class public final synthetic Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;

.field public final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->$r8$lambda$TSa9qXWsGpuMS-n0d1xzEKzFqew(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
