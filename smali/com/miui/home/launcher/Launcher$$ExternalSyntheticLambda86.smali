.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda86;
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

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda86;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda86;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$-1OKZ9QQb9UR7xyC8b5D9T1o64E(Lcom/miui/home/launcher/Launcher;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
