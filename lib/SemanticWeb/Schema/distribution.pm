use utf8;

package SemanticWeb::Schema::distribution;

# ABSTRACT: A downloadable form of this dataset

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'distribution';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A downloadable form of this dataset, at a specific location, in a specific
format. This property can be repeated if different variations are
available. There is no expectation that different downloadable
distributions must contain exactly equivalent information (see also
[DCAT](https://www.w3.org/TR/vocab-dcat-3/#Class:Distribution) on this
point). Different distributions might include or exclude different subsets
of the entire dataset, for example.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
