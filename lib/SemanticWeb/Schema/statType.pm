use utf8;

package SemanticWeb::Schema::statType;

# ABSTRACT: Indicates the kind of statistic represented by a [[StatisticalVariable]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'statType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the kind of statistic represented by a L<SemanticWeb::Schema::StatisticalVariable>, e.g. mean, count etc. The value of statType is a property, either from within Schema.org (e.g. [[count]], [[median]], [[marginOfError]], [[maxValue]], [[minValue]]) or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
