.class public final synthetic Lcom/miui/home/launcher/UninstallDropTargetMode$Delete$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->$r8$lambda$DY_MLDUteF6jTWIG_7nx2e1xVFU(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method
