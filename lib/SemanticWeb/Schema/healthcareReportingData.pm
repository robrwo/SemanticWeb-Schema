use utf8;

package SemanticWeb::Schema::healthcareReportingData;

# ABSTRACT: Indicates data describing a hospital, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthcareReportingData';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates data describing a hospital, e.g. a CDC L<SemanticWeb::Schema::CDCPMDRecord> or as some kind of L<SemanticWeb::Schema::Dataset>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
