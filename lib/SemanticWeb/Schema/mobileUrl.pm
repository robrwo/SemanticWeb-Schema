use utf8;

package SemanticWeb::Schema::mobileUrl;

# ABSTRACT: The [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mobileUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.

To discourage over-use, and reflecting intial usecases, the property is expected only on L<SemanticWeb::Schema::Product> and L<SemanticWeb::Schema::Offer>, rather than L<SemanticWeb::Schema::Thing>. The general trend in web technology is towards L<responsive design|https://en.wikipedia.org/wiki/Responsive_web_design> in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily L<SemanticWeb::Schema::Product> and L<SemanticWeb::Schema::Offer>) have extra URLs hosted on an additional "mobile site" alongside the main one. It should not be taken as an endorsement of this publication style.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
