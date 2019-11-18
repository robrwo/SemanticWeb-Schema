use utf8;

package SemanticWeb::Schema::LegalService;

# ABSTRACT: A LegalService is a business that provides legally-oriented services

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'LegalService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A LegalService is a business that provides legally-oriented services,
advice and representation, e.g. law firms.<br/><br/> As a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
it can be described as a <a class="localLink"
href="http://schema.org/provider">provider</a> of one or more <a
class="localLink" href="http://schema.org/Service">Service</a>(s).<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
