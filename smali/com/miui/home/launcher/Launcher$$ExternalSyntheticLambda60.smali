.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;

.field public final synthetic f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;->f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda60;->f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$roEwzcLLCncSh4YinqOseqftexQ(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/lang/Integer;)V

    return-void
.end method
