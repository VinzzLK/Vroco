.class public final Lcom/google/firebase/sessions/SessionFirelogPublisher$Companion;
.super Ljava/lang/Object;
.source "SessionFirelogPublisher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionFirelogPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/google/firebase/sessions/SessionFirelogPublisher$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/SessionFirelogPublisher$Companion;

    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionFirelogPublisher$Companion;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/SessionFirelogPublisher$Companion;->$$INSTANCE:Lcom/google/firebase/sessions/SessionFirelogPublisher$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/google/firebase/sessions/SessionFirelogPublisher;
    .locals 1

    .line 38
    sget-object p0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {p0}, Lcom/google/firebase/FirebaseKt;->getApp(Lcom/google/firebase/Firebase;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    const-class v0, Lcom/google/firebase/sessions/SessionFirelogPublisher;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Firebase.app[SessionFirelogPublisher::class.java]"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/firebase/sessions/SessionFirelogPublisher;

    return-object p0
.end method
