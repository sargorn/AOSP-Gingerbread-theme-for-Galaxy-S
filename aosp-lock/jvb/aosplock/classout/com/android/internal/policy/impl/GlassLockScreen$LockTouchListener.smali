.class Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;
.super Ljava/lang/Object;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;Lcom/android/internal/policy/impl/GlassLockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    return-void
.end method


# virtual methods
.method public onControllerOpened(Z)V
    .registers 2
    .parameter "opened"

    .prologue
    .line 646
    return-void
.end method

.method public onControllerVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 650
    return-void
.end method

.method public onTouchedCD()V
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 642
    return-void
.end method
