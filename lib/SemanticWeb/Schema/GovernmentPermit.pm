package SemanticWeb::Schema::GovernmentPermit;

# ABSTRACT: A permit issued by a government agency.

use Moo;

extends qw/ SemanticWeb::Schema::Permit /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A permit issued by a government agency.




=cut


around json_ld_type => sub { return 'GovernmentPermit' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Permit>

=cut

1;
