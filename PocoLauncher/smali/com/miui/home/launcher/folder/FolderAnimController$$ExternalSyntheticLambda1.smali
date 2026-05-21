.class public final synthetic Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->$r8$lambda$BZWPakgnRbz-Cc9XryMZokb1_vI(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
