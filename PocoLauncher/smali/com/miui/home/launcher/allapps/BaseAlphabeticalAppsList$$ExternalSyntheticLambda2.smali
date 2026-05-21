.class public final synthetic Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->$r8$lambda$DS3Pb6b0MrSnXPFaTA0h2X5o3zE(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method
