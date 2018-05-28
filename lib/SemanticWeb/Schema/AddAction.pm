package SemanticWeb::Schema::AddAction;

# ABSTRACT: The act of editing by adding an object to a collection.

use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of editing by adding an object to a collection.




=cut


around json_ld_type => sub { return 'AddAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
