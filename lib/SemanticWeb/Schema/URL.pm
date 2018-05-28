package SemanticWeb::Schema::URL;

# ABSTRACT: Data type: URL.

use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Data type: URL.




=cut


around json_ld_type => sub { return 'URL' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Text>

=cut

1;
