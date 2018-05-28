package SemanticWeb::Schema::LegalService;

# ABSTRACT: A LegalService is a business that provides legally-oriented services

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A LegalService is a business that provides legally-oriented services,
advice and representation, e.g. law firms.</p> <p>As a <a class="localLink"
href="http://schema.org/LocalBusiness">LocalBusiness</a> it can be
described as a <a class="localLink"
href="http://schema.org/provider">provider</a> of one or more <a
class="localLink" href="http://schema.org/Service">Service</a>(s).

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LegalService' }



=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
