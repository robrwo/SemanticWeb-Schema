package SemanticWeb::Schema::Attorney;

# ABSTRACT: Professional service: Attorney

use Moo;

extends qw/ SemanticWeb::Schema::LegalService /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

Professional service: Attorney. </p> <p>This type is deprecated - <a
class="localLink" href="http://schema.org/LegalService">LegalService</a> is
more inclusive and less ambiguous.

=end html




=cut


around json_ld_type => sub { return 'Attorney' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::LegalService>

=cut

1;
