.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda62;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda62;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda62;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda62;->f$1:Ljava/util/HashSet;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$-hlXcAgirOdoNv8S2l35YuvlOAg(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;Ljava/util/Map;)V

    return-void
.end method
