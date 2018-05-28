package SemanticWeb::Schema::TakeAction;

# ABSTRACT: <p>The act of gaining ownership of an object from an origin

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of gaining ownership of an object from an origin. Reciprocal of
GiveAction.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/GiveAction">GiveAction</a>: The reciprocal of
TakeAction.</li> <li><a class="localLink"
href="http://schema.org/ReceiveAction">ReceiveAction</a>: Unlike
ReceiveAction, TakeAction implies that ownership has been transfered.</li>
</ul> 

=end html




=cut


around json_ld_type => sub { return 'TakeAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
