.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda94;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda94;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda94;->f$0:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$iK2zwn6rySQEzZZlvUTfVNsajlg(Ljava/util/ArrayList;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
