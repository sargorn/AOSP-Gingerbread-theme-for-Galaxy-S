.class Lcom/android/internal/policy/impl/PatternUnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "PatternUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040317

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$802(Lcom/android/internal/policy/impl/PatternUnlockScreen;I)I

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 634
    :goto_36
    return-void

    .line 632
    :cond_37
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_36
.end method

.method public onTick(J)V
    .registers 10
    .parameter "millisUntilFinished"

    .prologue
    .line 615
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 616
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104032d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    .line 620
    return-void
.end method
