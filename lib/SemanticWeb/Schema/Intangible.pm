package SemanticWeb::Schema::Intangible;

# ABSTRACT: A utility class that serves as the umbrella for a number of 'intangible' things such as quantities

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A utility class that serves as the umbrella for a number of 'intangible'
things such as quantities, structured values, etc.




=cut


around json_ld_type => sub { return 'Intangible' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
