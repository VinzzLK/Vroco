.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda84;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda84;->f$0:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$vqJhq566-u2IlE6ob-sBKdl9G50(Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
