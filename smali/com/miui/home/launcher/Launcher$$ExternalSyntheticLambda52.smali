.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda52;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda52;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$p2wsa95oZPGdaNDlJucjnjgN4sk(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
