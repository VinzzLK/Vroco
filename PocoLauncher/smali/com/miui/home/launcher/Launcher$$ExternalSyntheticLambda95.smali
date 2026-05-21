.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda95;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda95;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda95;->f$0:Ljava/util/List;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$PpPe2sOUSapnpOFKP2OnpdRZDOc(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
