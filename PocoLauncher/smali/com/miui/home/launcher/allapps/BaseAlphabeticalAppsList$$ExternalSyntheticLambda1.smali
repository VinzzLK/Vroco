.class public final synthetic Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->$r8$lambda$EEB6zryKW7hpZ9xs7K48bfstyJY(Ljava/util/List;ILcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method
